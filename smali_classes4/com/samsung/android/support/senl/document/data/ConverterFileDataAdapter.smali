.class public Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bindId:I

.field public curFullPath:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public fileType:Ljava/lang/String;

.field public memoUUID:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public orientation:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->bindId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->fileType:Ljava/lang/String;

    return-void
.end method
