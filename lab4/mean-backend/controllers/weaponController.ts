import { NextFunction, Request, Response } from "express";
import { BadRequestError } from "../errors/badRequestError";
import { NotFoundError } from "../errors/notFoundError";
import { IWeapon, Weapons } from "../models/weapon";
import { SuccessResult } from "../responses/SuccessResult";

export class WeaponController {
  async CreateWeapon(req: Request, res: Response, next: NextFunction) {
    if (req?.body) {
      const { body } = req;

      var weapon: IWeapon = {
        ...body,
      };

      Weapons.insertMany([weapon]).then((createdWeapon) => {
        SuccessResult.WithData(res, createdWeapon);
      });
      return;
    }
    return next(new BadRequestError("Please provide information about weapon"));
  }

  async GetWeapon(id: string, req: Request, res: Response, next: NextFunction) {
    const weapon = await Weapons.findById(id);

    if (weapon) {
      return SuccessResult.WithData(res, weapon);
    }

    return next(new NotFoundError("Weapon", id));
  }

  GetAllWeapon(res: Response) {
    Weapons.find({}).then((weapon) => {
      return SuccessResult.WithData(res, weapon);
    });
  }

  async UpdateWeapon(
    id: string,
    req: Request,
    res: Response,
    next: NextFunction
  ) {
    if (req?.body) {
      const { body } = req;

      const updateWeapon: IWeapon = {
        ...body,
      };

      await Weapons.findByIdAndUpdate(id, updateWeapon);

      return SuccessResult.Empty(res, 204);
    }
    return next(new BadRequestError("Please provide information about weapon"));
  }

  DeleteWeapon(id: string, res: Response) {
    Weapons.findByIdAndDelete(id).then(() => {
      return SuccessResult.Empty(res, 204);
    });
  }
}
