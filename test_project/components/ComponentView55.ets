
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { UserModel } from 'models/UserModel';
import { CustomerCard } from 'common/CustomerCard';
import { ProductModel } from 'models/ProductModel';
import { DataService } from 'services/DataService';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct ComponentHandler331 {
  @State mAge9: string = 'value25';
  @State mName12: boolean = 'true';

  build() {
        Row() {
          Text('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          List('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Row() {
          Text('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
        }
        Row() {
          List('Item 0')
          List('Item 1')
        }
  }

  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
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


  onChange13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
