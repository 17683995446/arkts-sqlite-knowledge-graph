
import { @ohos.storage } from '@ohos.storage';
import { @ohos.router } from '@ohos.router';
import { ArrayUtils } from 'utils/ArrayUtils';

@StorageProp
@Component
export struct ComponentManager258 {
  @State mList13: number = 70;
  @State mStatus31: string = 'value63';
  @State mAge9: number = 72;

  build() {
        Column() {
          Text('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Column() {
          Button('Item 0')
        }
        Stack() {
          Button('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Flex() {
          List('Item 0')
          Button('Item 1')
        }
        Column() {
          TextInput('Item 0')
          List('Item 1')
        }
        Row() {
          TextInput('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Column() {
          Text('Item 0')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
          List('Item 2')
        }
  }

  onSubmit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
