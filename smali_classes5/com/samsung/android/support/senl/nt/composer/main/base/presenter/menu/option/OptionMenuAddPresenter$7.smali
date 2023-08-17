.class synthetic Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->AudioAddByMyFiles:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->AudioADD:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->TextAddByMyFiles:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->TextADD:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->PDFChooser:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->BrushDrawing:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter$7;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$base$util$ComposerRequestCode:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->DocumentScan:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
