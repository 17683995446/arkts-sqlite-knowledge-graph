
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CustomerCard } from 'common/CustomerCard';
import { NetworkService } from 'services/NetworkService';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Link
@Component
export struct ComponentView849 {
  @State mName41: UserModel[] = 73;
  @State mData32: boolean = 'true';
  @State mStatus41: number = 66;
  @State mData37: number = 22;
  @State mStatus4: UserModel[] = 79;

  build() {
        Row() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Image('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
        }
        Flex() {
          Text('Item 0')
          Image('Item 1')
        }
  }

  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
