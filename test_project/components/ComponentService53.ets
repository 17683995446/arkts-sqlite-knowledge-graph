
import { @ohos.hilog } from '@ohos.hilog';
import { CartModel } from 'models/CartModel';
import { Logger } from 'utils/Logger';

@Link
@Component
export struct ComponentUtils789 {
  @State mCount23: number = 12;
  @State mName27: UserModel[] = 42;
  @State mAge14: number = 96;
  @State mAge1: boolean = 'true';

  build() {
        Flex() {
          Image('Item 0')
          List('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          List('Item 0')
          List('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
          Image('Item 2')
        }
  }

  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
