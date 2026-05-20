
import { @system.router } from '@system.router';
import { DataService } from 'services/DataService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerText } from 'common/CustomerText';
import { CustomerCard } from 'common/CustomerCard';
import { ProductModel } from 'models/ProductModel';
import { @ohos.router } from '@ohos.router';
import { OrderModel } from 'models/OrderModel';

@StorageProp
@Component
export struct ComponentService567 {
  @State mData22: UserModel[] = 34;
  @State mStatus27: boolean = 'true';

  build() {
        Column() {
          List('Item 0')
          Image('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          Text('Item 0')
        }
        Column() {
          Button('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Column() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
  }

  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
