
import { CustomerCard } from 'common/CustomerCard';
import { CartModel } from 'models/CartModel';
import { NetworkService } from 'services/NetworkService';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Prop
@Component
export struct ComponentHandler358 {
  @State mCount38: UserModel[] = 88;
  @State mAge26: string = 'value91';

  build() {
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Row() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
        }
        Column() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          Button('Item 0')
        }
        Stack() {
          Text('Item 0')
          List('Item 1')
        }
        Column() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
  }

  onLoad4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
