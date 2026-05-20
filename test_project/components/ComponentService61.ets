
import { @ohos.router } from '@ohos.router';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DataService } from 'services/DataService';
import { CartModel } from 'models/CartModel';
import { CustomerCard } from 'common/CustomerCard';

@StorageLink
@Component
export struct ComponentHandler255 {
  @State mName35: string = 'value10';
  @State mAge46: string = 'value26';
  @State mData4: UserModel[] = 75;
  @State mAge13: UserModel[] = 80;

  build() {
        Flex() {
          Text('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
        Row() {
          Image('Item 0')
        }
  }

  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
