
import { DataService } from 'services/DataService';
import { CustomerCard } from 'common/CustomerCard';
import { CustomerButton } from 'common/CustomerButton';

@Observed
@Component
export struct ComponentManager472 {
  @State mCount35: string = 'value40';
  @State mData30: number = 28;
  @State mList22: UserModel[] = 56;
  @State mName22: number = 85;

  build() {
        Flex() {
          TextInput('Item 0')
        }
        Row() {
          Text('Item 0')
        }
        Flex() {
          Image('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          Text('Item 0')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Flex() {
          Button('Item 0')
          Image('Item 1')
        }
  }

  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
