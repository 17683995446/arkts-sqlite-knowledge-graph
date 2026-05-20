
import { DataService } from 'services/DataService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.router } from '@ohos.router';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Link
@Component
export struct ComponentConsumer664 {
  @State mAge40: UserModel[] = 20;
  @State mName15: string = 'value51';
  @State mList37: UserModel[] = 56;
  @State mData23: number = 77;
  @State mCount20: string = 'value23';
  @State mName4: UserModel[] = 1;

  build() {
        Flex() {
          List('Item 0')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Row() {
          List('Item 0')
          Button('Item 1')
        }
        Column() {
          TextInput('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
  }

  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
