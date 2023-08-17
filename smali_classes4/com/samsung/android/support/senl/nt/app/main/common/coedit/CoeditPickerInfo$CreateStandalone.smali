.class public Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;
.super Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateStandalone"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mSpaceName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->mIsStandalone:Z

    return-void
.end method
