
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.promptAction } from '@ohos.promptAction';
import { OrderModel } from 'models/OrderModel';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Preview
@Component
export struct ComponentView249 {
  @State mCount43: UserModel[] = 45;
  @State mName24: string = 'value96';
  @State mStatus2: UserModel[] = 52;
  @State mAge31: UserModel[] = 40;

  build() {
        Flex() {
          Button('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          Image('Item 0')
        }
        Stack() {
          Button('Item 0')
          List('Item 1')
        }
        Column() {
          Text('Item 0')
        }
        Column() {
          TextInput('Item 0')
        }
        Row() {
          List('Item 0')
          List('Item 1')
        }
        Flex() {
          List('Item 0')
          List('Item 1')
        }
  }

  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
