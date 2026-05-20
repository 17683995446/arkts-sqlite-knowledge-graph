
import { ProductModel } from 'models/ProductModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.promptAction } from '@ohos.promptAction';

@Component
@Component
export struct ComponentView834 {
  @State mData5: number = 43;
  @State mCount29: number = 81;
  @State mCount41: boolean = 'true';
  @State mAge33: UserModel[] = 35;

  build() {
        Column() {
          List('Item 0')
        }
        Stack() {
          Button('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Row() {
          List('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
        }
  }

  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
