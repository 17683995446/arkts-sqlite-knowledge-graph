
import { DateUtils } from 'utils/DateUtils';
import { ConfigService } from 'services/ConfigService';
import { OrderModel } from 'models/OrderModel';

@StorageProp
@Component
export struct ComponentHelper845 {
  @State mAge19: UserModel[] = 0;
  @State mStatus40: number = 48;
  @State mStatus50: boolean = 'true';
  @State mName2: boolean = 'true';
  @State mAge12: string = 'value87';
  @State mName42: UserModel[] = 2;

  build() {
        Column() {
          Button('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
        }
        Row() {
          List('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Column() {
          Button('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
  }

  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
