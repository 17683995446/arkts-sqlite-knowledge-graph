
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerButton } from 'common/CustomerButton';
import { StringUtils } from 'utils/StringUtils';
import { DataService } from 'services/DataService';
import { NetworkService } from 'services/NetworkService';
import { @ohos.hilog } from '@ohos.hilog';
import { ProductModel } from 'models/ProductModel';
import { CustomerText } from 'common/CustomerText';

@Entry
@Component
export struct ComponentProvider674 {
  @State mData43: boolean = 'true';
  @State mData8: boolean = 'true';
  @State mAge19: number = 41;
  @State mList6: string = 'value24';
  @State mCount31: boolean = 'true';

  build() {
        Row() {
          Image('Item 0')
          Image('Item 1')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Stack() {
          List('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Row() {
          Text('Item 0')
          Text('Item 1')
        }
        Row() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
          Text('Item 2')
        }
  }

  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
