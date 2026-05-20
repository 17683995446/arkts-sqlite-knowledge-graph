
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { OrderModel } from 'models/OrderModel';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { NetworkService } from 'services/NetworkService';

@StorageProp
@Component
export struct ComponentController823 {
  @State mCount34: number = 18;
  @State mCount24: boolean = 'true';
  @State mData21: boolean = 'true';
  @State mCount41: UserModel[] = 55;

  build() {
        Row() {
          Button('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Row() {
          TextInput('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
  }

  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
