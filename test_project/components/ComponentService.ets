
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ProductModel } from 'models/ProductModel';
import { DateUtils } from 'utils/DateUtils';
import { @system.router } from '@system.router';
import { ArrayUtils } from 'utils/ArrayUtils';
import { DataService } from 'services/DataService';

@StorageLink
@Component
export struct ComponentProvider768 {
  @State mData25: UserModel[] = 15;
  @State mData7: boolean = 'true';
  @State mCount8: number = 36;
  @State mList23: number = 49;
  @State mStatus25: number = 29;
  @State mCount1: UserModel[] = 14;

  build() {
        Flex() {
          Button('Item 0')
          Image('Item 1')
        }
        Flex() {
          Text('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Column() {
          Text('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
  }

  onSubmit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
