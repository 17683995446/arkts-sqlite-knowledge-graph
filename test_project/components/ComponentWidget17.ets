
import { CartModel } from 'models/CartModel';
import { Logger } from 'utils/Logger';
import { DateUtils } from 'utils/DateUtils';
import { DataService } from 'services/DataService';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage } from '@ohos.storage';
import { UserModel } from 'models/UserModel';

@Component
@Component
export struct ComponentView976 {
  @State mName15: number = 77;
  @State mData42: number = 59;

  build() {
        Stack() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Image('Item 0')
          Text('Item 1')
        }
        Row() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Column() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Flex() {
          Button('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Column() {
          List('Item 0')
        }
  }

  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
