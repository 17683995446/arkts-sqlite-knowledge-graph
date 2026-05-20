
import { StringUtils } from 'utils/StringUtils';
import { CustomerCard } from 'common/CustomerCard';
import { ValidateUtils } from 'utils/ValidateUtils';
import { DataService } from 'services/DataService';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { Logger } from 'utils/Logger';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Preview
@Component
export struct ComponentProvider367 {
  @State mData22: UserModel[] = 28;
  @State mList25: boolean = 'true';
  @State mData41: boolean = 'true';
  @State mCount17: boolean = 'true';
  @State mName31: boolean = 'true';
  @State mStatus17: boolean = 'true';

  build() {
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          Button('Item 0')
          Button('Item 1')
        }
        Column() {
          Button('Item 0')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
        }
        Row() {
          TextInput('Item 0')
        }
        Row() {
          TextInput('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
  }

  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
