
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { StringUtils } from 'utils/StringUtils';
import { CustomerText } from 'common/CustomerText';

@Link
@Component
export struct ComponentWidget467 {
  @State mStatus14: string = 'value70';
  @State mStatus30: UserModel[] = 53;
  @State mStatus19: number = 47;
  @State mList7: string = 'value27';
  @State mAge5: UserModel[] = 47;
  @State mData18: boolean = 'true';

  build() {
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Row() {
          Text('Item 0')
        }
        Row() {
          Image('Item 0')
          Image('Item 1')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
        }
  }

  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
