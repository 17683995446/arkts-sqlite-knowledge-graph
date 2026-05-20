
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DateUtils } from 'utils/DateUtils';
import { AuthService } from 'services/AuthService';
import { StringUtils } from 'utils/StringUtils';
import { NetworkService } from 'services/NetworkService';

@Preview
@Component
export struct ComponentHelper471 {
  @State mStatus13: string = 'value51';
  @State mStatus38: string = 'value9';

  build() {
        Column() {
          TextInput('Item 0')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Text('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          List('Item 0')
        }
  }

  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
