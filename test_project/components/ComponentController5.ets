
import { DataService } from 'services/DataService';
import { ArrayUtils } from 'utils/ArrayUtils';
import { ProductModel } from 'models/ProductModel';

@Entry
@Component
export struct ComponentManager971 {
  @State mList46: UserModel[] = 39;
  @State mStatus37: string = 'value42';
  @State mName37: boolean = 'true';

  build() {
        Flex() {
          Button('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
        }
        Stack() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          List('Item 0')
        }
        Stack() {
          Text('Item 0')
          List('Item 1')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Column() {
          Image('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
  }

  onRefresh15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
