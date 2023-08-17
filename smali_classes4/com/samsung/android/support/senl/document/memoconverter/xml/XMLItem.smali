.class public Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private createdTime:J

.field private modifiedTime:J

.field private templateType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->templateType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->createdTime:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->modifiedTime:J

    return-wide v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->templateType:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->createdTime:J

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->modifiedTime:J

    return-void
.end method

.method public setTemplateType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->templateType:Ljava/lang/String;

    return-void
.end method
