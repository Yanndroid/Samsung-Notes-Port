.class public Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDocDBData"
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public favorite:Ljava/lang/String;

.field public lastModifiedTime:Ljava/lang/String;

.field public prevUUID:Ljava/lang/String;

.field public strippedContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->prevUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->strippedContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->lastModifiedTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->favorite:Ljava/lang/String;

    return-void
.end method
