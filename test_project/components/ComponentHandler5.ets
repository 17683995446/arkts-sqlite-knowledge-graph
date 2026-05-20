
import { CustomerCard } from 'common/CustomerCard';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Link
@Component
export struct ComponentProvider587 {
  @State mName40: string = 'value91';
  @State mList22: string = 'value22';
  @State mData32: string = 'value36';
  @State mStatus37: boolean = 'true';

  build() {
        Stack() {
          TextInput('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
          Text('Item 1')
        }
  }

  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
