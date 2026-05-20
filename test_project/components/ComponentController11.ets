
import { @ohos.promptAction } from '@ohos.promptAction';
import { @system.router } from '@system.router';
import { ProductModel } from 'models/ProductModel';

@Observed
@Component
export struct ComponentHelper832 {
  @State mData43: string = 'value4';
  @State mList3: UserModel[] = 39;
  @State mList6: boolean = 'true';

  build() {
        Stack() {
          Text('Item 0')
          Button('Item 1')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
        }
        Row() {
          Text('Item 0')
        }
        Stack() {
          Button('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
  }

  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
