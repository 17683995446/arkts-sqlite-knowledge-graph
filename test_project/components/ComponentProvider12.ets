
import { ConfigService } from 'services/ConfigService';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { NetworkService } from 'services/NetworkService';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.promptAction } from '@ohos.promptAction';

@StorageProp
@Component
export struct ComponentProvider526 {
  @State mData41: UserModel[] = 86;
  @State mList38: boolean = 'true';
  @State mAge7: UserModel[] = 7;

  build() {
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Stack() {
          Button('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Row() {
          List('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
  }

  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
