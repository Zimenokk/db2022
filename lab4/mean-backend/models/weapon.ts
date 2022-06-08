import mongoose from "mongoose";

export interface IWeapon {
  name: string;
  description: string;
  image: string;
  range: number;
}

const WeaponSchema = new mongoose.Schema(
  {
    name: { type: String, required: true },
    description: { type: String, required: true },
    image: { type: String, required: true },
    range: { type: Number, required: true },
  },
  {
    versionKey: false,
    collection: "Weapon",
  }
);

const Weapons = mongoose.model<IWeapon>("Weapon", WeaponSchema);

export { Weapons };
