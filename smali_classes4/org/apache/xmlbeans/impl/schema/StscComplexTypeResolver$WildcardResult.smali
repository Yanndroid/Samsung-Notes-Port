.class Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildcardResult"
.end annotation


# instance fields
.field public hasWildcards:Z

.field public typedWildcards:Lorg/apache/xmlbeans/QNameSet;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/QNameSet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    return-void
.end method
