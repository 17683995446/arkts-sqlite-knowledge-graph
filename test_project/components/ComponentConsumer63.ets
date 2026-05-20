
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.hilog } from '@ohos.hilog';
import { DataService } from 'services/DataService';

@StorageProp
@Component
export struct ComponentController528 {
  @State mAge32: string = 'value22';
  @State mList30: number = 46;
  @State mList42: boolean = 'true';
  @State mStatus4: boolean = 'true';
  @State mStatus26: number = 49;

  build() {
        Row() {
          TextInput('Item 0')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
        }
        Column() {
          Image('Item 0')
        }
        Column() {
          List('Item 0')
          List('Item 1')
        }
  }

  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
