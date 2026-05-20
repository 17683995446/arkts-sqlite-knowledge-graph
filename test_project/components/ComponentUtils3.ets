
import { DataService } from 'services/DataService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { UserModel } from 'models/UserModel';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.router } from '@ohos.router';

@StorageLink
@Component
export struct ComponentManager934 {
  @State mCount20: number = 89;
  @State mStatus20: string = 'value54';
  @State mData2: UserModel[] = 74;
  @State mAge27: string = 'value68';

  build() {
        Row() {
          List('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          Button('Item 0')
          Text('Item 1')
        }
        Row() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
        }
  }

  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
