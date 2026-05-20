
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { OrderModel } from 'models/OrderModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct ComponentManager496 {
  @State mName11: UserModel[] = 97;
  @State mData31: boolean = 'true';
  @State mStatus34: UserModel[] = 88;

  build() {
        Column() {
          List('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Column() {
          List('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
        }
  }

  onSubmit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
