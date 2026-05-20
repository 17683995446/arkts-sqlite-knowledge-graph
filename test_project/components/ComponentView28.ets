
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CartModel } from 'models/CartModel';

@Component
@Component
export struct ComponentManager64 {
  @State mList43: boolean = 'true';
  @State mList34: number = 22;
  @State mStatus29: UserModel[] = 85;

  build() {
        Flex() {
          Image('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Stack() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          List('Item 0')
        }
        Stack() {
          List('Item 0')
          List('Item 1')
        }
        Column() {
          Image('Item 0')
          Image('Item 1')
        }
  }

  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
