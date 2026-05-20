
import { ProductModel } from 'models/ProductModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { NetworkService } from 'services/NetworkService';

@Component
@Component
export struct ComponentUtils908 {
  @State mAge12: UserModel[] = 96;
  @State mList50: UserModel[] = 60;
  @State mName16: string = 'value33';
  @State mCount31: boolean = 'true';
  @State mName10: number = 92;

  build() {
        Stack() {
          Image('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          Button('Item 0')
        }
        Flex() {
          Button('Item 0')
          Image('Item 1')
        }
  }

  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
