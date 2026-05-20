
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DateUtils } from 'utils/DateUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { ConfigService } from 'services/ConfigService';

@Observed
@Component
export struct ComponentController766 {
  @State mCount37: number = 33;
  @State mData8: number = 78;
  @State mAge27: boolean = 'true';
  @State mName41: number = 33;
  @State mData33: boolean = 'true';

  build() {
        Column() {
          Button('Item 0')
          Button('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Row() {
          Button('Item 0')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Column() {
          TextInput('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
  }

  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
