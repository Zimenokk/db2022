from typing import List

from fastapi import FastAPI, Depends
from starlette.responses import Response

from crud import CrudService
from database import db
from models import WeaponCreate, Weapon, Result

router = FastAPI()


@router.on_event("startup")
async def on_startup():
    await db.ensure_created()


@router.get("/weapon/{id}", response_model=tea)
async def get_weapon_by_id(id: int, crud: CrudService = Depends()):
    return await crud.get_by_id(id)


@router.get("/weapon", response_model=List[tea])
async def get_list_of_all_weapon(response: Response, crud: CrudService = Depends()):
    return await crud.get_all()


@router.post("/weapon", response_model=Result)
async def create_weapon(model: WeaponCreate, crud: CrudService = Depends()):
    await crud.create(model)
    return Result(status="Weapon created successfully.")


@router.put("/weapon/{id}", response_model=Result)
async def update_weapon_by_id(id: int, model: WeaponCreate, crud: CrudService = Depends()):
    await crud.update(id, model)
    return Result(status="Weapon updated successfully.")


@router.delete("/weapon/{id}", response_model=Result)
async def delete_weapon_by_id(id: int, crud: CrudService = Depends()):
    await crud.delete(id)
    return Result(status="Weapon deleted successfully.")
