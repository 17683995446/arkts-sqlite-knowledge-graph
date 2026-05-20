
import { CustomerText } from 'common/CustomerText';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { Logger } from 'utils/Logger';
import { DateUtils } from 'utils/DateUtils';
import { OrderModel } from 'models/OrderModel';
import { ConfigService } from 'services/ConfigService';

@Component
@Component
export struct ComponentView245 {
  @State mList10: string = 'value86';
  @State mList1: boolean = 'true';
  @State mName38: UserModel[] = 96;
  @State mAge50: UserModel[] = 55;
  @State mData2: string = 'value73';
  @State mStatus44: UserModel[] = 9;

  build() {
        Column() {
          List('Item 0')
        }
        Row() {
          Button('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
          Button('Item 1')
        }
        Flex() {
          Button('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Text('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Row() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
  }

  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
