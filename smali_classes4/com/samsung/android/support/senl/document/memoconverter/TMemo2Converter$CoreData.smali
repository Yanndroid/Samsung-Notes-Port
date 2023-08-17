.class Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreData"
.end annotation


# instance fields
.field public cTime:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public mTime:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->cTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->mTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;-><init>()V

    return-void
.end method
