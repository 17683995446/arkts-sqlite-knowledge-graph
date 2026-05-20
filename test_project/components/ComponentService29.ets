
import { OrderModel } from 'models/OrderModel';
import { AuthService } from 'services/AuthService';
import { UserModel } from 'models/UserModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage } from '@ohos.storage';
import { StringUtils } from 'utils/StringUtils';

@State
@Component
export struct ComponentView215 {
  @State mData25: boolean = 'true';
  @State mStatus13: number = 21;

  build() {
        Column() {
          Button('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Text('Item 0')
        }
        Column() {
          TextInput('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
  }

  onChange13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
