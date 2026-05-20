
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage } from '@ohos.storage';
import { CartModel } from 'models/CartModel';
import { @system.router } from '@system.router';

@State
@Component
export struct ComponentWidget267 {
  @State mData35: UserModel[] = 58;
  @State mData27: UserModel[] = 38;
  @State mList29: boolean = 'true';
  @State mData32: UserModel[] = 18;

  build() {
        Flex() {
          Text('Item 0')
          Image('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Column() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
  }

  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
