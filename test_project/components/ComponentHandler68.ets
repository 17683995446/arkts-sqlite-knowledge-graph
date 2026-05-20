
import { CustomerText } from 'common/CustomerText';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { DateUtils } from 'utils/DateUtils';

@State
@Component
export struct ComponentHandler841 {
  @State mCount42: number = 73;
  @State mAge32: UserModel[] = 53;
  @State mData13: string = 'value30';

  build() {
        Flex() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
        }
  }

  onSubmit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
