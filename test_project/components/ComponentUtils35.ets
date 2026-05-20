
import { @ohos.router } from '@ohos.router';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { OrderModel } from 'models/OrderModel';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@StorageProp
@Component
export struct ComponentHelper953 {
  @State mStatus39: number = 16;
  @State mAge16: UserModel[] = 16;
  @State mStatus29: string = 'value49';
  @State mData10: number = 93;
  @State mData24: boolean = 'true';
  @State mAge50: UserModel[] = 6;

  build() {
        Flex() {
          List('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Text('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Column() {
          Text('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
        }
  }

  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
