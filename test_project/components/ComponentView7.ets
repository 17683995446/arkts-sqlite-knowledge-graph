
import { CustomerText } from 'common/CustomerText';
import { DataService } from 'services/DataService';
import { ValidateUtils } from 'utils/ValidateUtils';
import { ProductModel } from 'models/ProductModel';

@Preview
@Component
export struct ComponentProvider955 {
  @State mList40: UserModel[] = 16;
  @State mName26: number = 16;
  @State mStatus18: number = 57;
  @State mData11: boolean = 'true';
  @State mAge3: boolean = 'true';
  @State mData3: boolean = 'true';

  build() {
        Stack() {
          Image('Item 0')
        }
        Flex() {
          Text('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Column() {
          List('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
        }
        Stack() {
          Button('Item 0')
          List('Item 1')
        }
  }

  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
