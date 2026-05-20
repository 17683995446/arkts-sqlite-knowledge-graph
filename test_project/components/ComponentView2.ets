
import { AuthService } from 'services/AuthService';
import { ArrayUtils } from 'utils/ArrayUtils';
import { ConfigService } from 'services/ConfigService';
import { DateUtils } from 'utils/DateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { CartModel } from 'models/CartModel';
import { @ohos.router } from '@ohos.router';

@Link
@Component
export struct ComponentUtils154 {
  @State mCount1: number = 27;
  @State mName18: string = 'value79';
  @State mStatus28: number = 81;
  @State mData21: string = 'value53';

  build() {
        Column() {
          Button('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Row() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Column() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Row() {
          List('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
  }

  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
