
import { CustomerCard } from 'common/CustomerCard';
import { DataService } from 'services/DataService';
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { UserModel } from 'models/UserModel';

@Preview
@Component
export struct ComponentView395 {
  @State mData24: boolean = 'true';
  @State mData36: boolean = 'true';
  @State mName24: boolean = 'true';

  build() {
        Column() {
          Button('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Text('Item 0')
          Image('Item 1')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Column() {
          List('Item 0')
        }
        Stack() {
          Button('Item 0')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
        }
  }

  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
