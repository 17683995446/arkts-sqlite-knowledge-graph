
import { CustomerCard } from 'common/CustomerCard';
import { StringUtils } from 'utils/StringUtils';
import { ArrayUtils } from 'utils/ArrayUtils';

@Prop
@Component
export struct ComponentHandler488 {
  @State mCount40: number = 67;
  @State mName26: string = 'value12';
  @State mData27: UserModel[] = 39;

  build() {
        Stack() {
          Image('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
        }
        Flex() {
          Text('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Row() {
          Button('Item 0')
          Button('Item 1')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Row() {
          TextInput('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
  }

  onRefresh15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
