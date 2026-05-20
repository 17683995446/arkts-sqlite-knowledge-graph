
import { Logger } from 'utils/Logger';
import { @ohos.storage } from '@ohos.storage';
import { DataService } from 'services/DataService';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerButton } from 'common/CustomerButton';

@Component
@Component
export struct ComponentWidget760 {
  @State mCount27: string = 'value11';
  @State mCount31: string = 'value2';
  @State mData46: boolean = 'true';

  build() {
        Column() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          Text('Item 0')
          Text('Item 1')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
  }

  onRefresh15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
