.class Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->showTouchOffsetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$8;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x15

    :cond_0
    mul-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
