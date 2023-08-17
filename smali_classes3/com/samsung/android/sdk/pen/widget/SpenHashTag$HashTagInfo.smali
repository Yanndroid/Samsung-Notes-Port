.class public Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/widget/SpenHashTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashTagInfo"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->text:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->start:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagInfo;->end:I

    return-void
.end method
