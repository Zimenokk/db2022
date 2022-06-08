from sqlmodel import SQLModel, Field


class Result(SQLModel):
    status: str


class Weapon(SQLModel, table=True):
    __tablename__ = "Weapon"

    id: int = Field(primary_key=True)
    name: str = Field()
    description: str = Field()
    type: str = Field()
    range: int = Field()


class WeaponCreate(SQLModel):
    name: str = Field(default="Desert Eagle")
    description: str = Field(default="Cool pehal")
    type: str = Field(default="Gun")
    range: int = Field(default=5)
