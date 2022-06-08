from typing import List

from fastapi import Depends, HTTPException
from sqlalchemy.ext.asyncio import AsyncSession, AsyncConnection
from sqlalchemy.sql import text

from database import db
from models import Weapon, WeaponCreate


class CrudService:
    def __init__(self, session: AsyncSession = Depends(db.get_session)):
        self._session = session

    async def get_by_id(self, id: int) -> Weapon:
        query = text("""SELECT * FROM Weapon WHERE id=:id""")
        result = await self._session.execute(query, {"id": id})
        model = result.one_or_none()
        if not model:
            raise HTTPException(status_code=404, detail="Weapon not found.")
        return Weapon(
            id=model[0],
            name=model[1],
            description=model[2],
            type=model[3],
            range=model[4]
        )

    async def count_all(self) -> int:
        query = text("""SELECT COUNT(*) FROM Weapon""")
        result = await self._session.execute(query)
        return result.scalar()

    async def get_all(self) -> List[Weapon]:
        query = text("""SELECT id, name, description, type, range FROM Weapon""")
        result = await self._session.execute(query)
        models = []
        for row in result.all():
            tea = Tea(
                id=row[0],
                name=row[1],
                description=row[2],
                type=row[3],
                range=row[4]
            )
            models.append(tea)
        return models

    async def create(self, model: WeaponCreate) -> Weapon:
        query = text("""
            INSERT INTO Weapon (name, description, type, range)
            VALUES (:name, :description, :type, :range)
            """)
        result = await self._session.execute(query, model.dict())
        await self._session.commit()
        return result

    async def update(self, id: int, model: WeaponCreate) -> None:
        query = text("""
            UPDATE Weapon 
            SET name=:name, description=:description, type=:type, range=:range
            WHERE id=:id
            """)
        params = {"id": id}
        params.update(model.dict())
        result = await self._session.execute(query, model.dict())
        await self._session.commit()
        return result

    async def delete(self, id: int) -> None:
        query = text("""DELETE FROM Weapon WHERE id=:id""")
        await self._session.execute(query, {"id": id})
        await self._session.commit()
