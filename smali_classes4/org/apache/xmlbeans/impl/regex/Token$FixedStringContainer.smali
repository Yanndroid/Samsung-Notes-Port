.class Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedStringContainer"
.end annotation


# instance fields
.field public options:I

.field public token:Lorg/apache/xmlbeans/impl/regex/Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;->token:Lorg/apache/xmlbeans/impl/regex/Token;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;->options:I

    return-void
.end method
