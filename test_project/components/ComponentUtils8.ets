
import { DateUtils } from 'utils/DateUtils';
import { ProductModel } from 'models/ProductModel';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@Component
@Component
export struct ComponentConsumer523 {
  @State mAge29: UserModel[] = 31;
  @State mList5: boolean = 'true';
  @State mCount40: string = 'value63';
  @State mCount40: boolean = 'true';

  build() {
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Row() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
  }

  onLoad10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
