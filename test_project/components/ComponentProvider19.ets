
import { NetworkService } from 'services/NetworkService';
import { OrderModel } from 'models/OrderModel';
import { Logger } from 'utils/Logger';
import { @ohos.storage } from '@ohos.storage';
import { ConfigService } from 'services/ConfigService';
import { UserModel } from 'models/UserModel';

@Observed
@Component
export struct ComponentWidget104 {
  @State mAge45: string = 'value69';
  @State mAge42: string = 'value72';
  @State mAge21: UserModel[] = 67;

  build() {
        Row() {
          Button('Item 0')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
        }
        Column() {
          TextInput('Item 0')
        }
  }

  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
