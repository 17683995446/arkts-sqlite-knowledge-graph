
import { ObjectUtils } from 'utils/ObjectUtils';
import { CustomerCard } from 'common/CustomerCard';
import { CustomerText } from 'common/CustomerText';
import { OrderModel } from 'models/OrderModel';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { DataService } from 'services/DataService';
import { DateUtils } from 'utils/DateUtils';

@StorageProp
@Component
export struct ComponentController333 {
  @State mCount41: UserModel[] = 82;
  @State mCount36: string = 'value53';
  @State mStatus35: number = 37;

  build() {
        Column() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Column() {
          TextInput('Item 0')
          List('Item 1')
        }
        Flex() {
          List('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Text('Item 0')
          Button('Item 1')
        }
        Column() {
          TextInput('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
  }

  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
