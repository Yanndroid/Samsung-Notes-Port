.class public interface abstract Lorg/apache/poi/ss/usermodel/Table;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final isStructuredReference:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z_\\\\][a-zA-Z0-9._]*\\[.*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/Table;->isStructuredReference:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public abstract contains(Lorg/apache/poi/ss/usermodel/Cell;)Z
.end method

.method public abstract findColumnIndex(Ljava/lang/String;)I
.end method

.method public abstract getEndColIndex()I
.end method

.method public abstract getEndRowIndex()I
.end method

.method public abstract getHeaderRowCount()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSheetName()Ljava/lang/String;
.end method

.method public abstract getStartColIndex()I
.end method

.method public abstract getStartRowIndex()I
.end method

.method public abstract getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;
.end method

.method public abstract getStyleName()Ljava/lang/String;
.end method

.method public abstract getTotalsRowCount()I
.end method

.method public abstract isHasTotalsRow()Z
.end method
