.class Lorg/apache/xmlbeans/impl/regex/Op$StringOp;
.super Lorg/apache/xmlbeans/impl/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringOp"
.end annotation


# instance fields
.field public string:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Op;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op$StringOp;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$StringOp;->string:Ljava/lang/String;

    return-object v0
.end method
