
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ConfigService } from 'services/ConfigService';
import { DateUtils } from 'utils/DateUtils';
import { OrderModel } from 'models/OrderModel';
import { AuthService } from 'services/AuthService';

@StorageLink
@Component
export struct ComponentService564 {
  @State mData37: UserModel[] = 17;
  @State mData37: string = 'value78';
  @State mData12: boolean = 'true';

  build() {
        Flex() {
          Text('Item 0')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Row() {
          TextInput('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Row() {
          TextInput('Item 0')
        }
        Row() {
          List('Item 0')
          Button('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Row() {
          TextInput('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
  }

  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
