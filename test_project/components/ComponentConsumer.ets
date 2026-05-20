
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DateUtils } from 'utils/DateUtils';
import { @system.router } from '@system.router';

@Link
@Component
export struct ComponentManager545 {
  @State mData6: string = 'value4';
  @State mName40: number = 93;

  build() {
        Flex() {
          Image('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Row() {
          List('Item 0')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Column() {
          Image('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
          List('Item 2')
        }
  }

  onInit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
