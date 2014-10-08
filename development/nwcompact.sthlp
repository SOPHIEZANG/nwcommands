{smcl}
{* *! version 1.0.1  16may2012 author: Thomas Grund}{...}
{cmd:help nwcompact
{hline}

{title:Title}

{p2colset 5 20 22 2}{...}
{p2col :nwcompact {hline 2}}Converts a full-format edgelist to one of the more compact formats{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 17 2}
{cmdab: nwtoedge} 
[{cmd:,}
{opt from(varname)}
{opt to(varname)}
{opt link(varname)}
{{opt compact| nozeros | keeptonodes | keepego | full}
}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt from(varname)}}variable name specifying {it: fromid}.{p_end}
{synopt:{opt to(varname)}}variable name specifying {it: toid}.{p_end}
{synopt:{opt link(varname)}}variable name specifying link. {p_end}
{synoptline}
{syntab:Compactness}
{synopt:{opt c:ompact}}default{p_end}
{synopt:{opt noz:eros}}only keep non-zero and non-missing links{p_end}
{synopt:{opt keepto:nodes}}keep at least one observation per receiving node{p_end}
{synopt:{opt keepe:go}}keep self-links{p_end}
{synopt:{opt f:ull}}keep all dyads{p_end}
{synoptline}
{p2colreset}{...}


{title:Description}

{pstd}
{cmd:nwcompact} Converts a full-format egdelist to one of the more compact formats.

{title:Options}


{dlgtab:Compactness}

{phang}
{opt c:ompact} Is the default option. It is used to reduce the size of the dataset without losing any
relevant information, and is particularly useful for large and sparse matrices. A compact
edgelist includes all pairs of nodes that are directly linked to one another. In addition and in
order to preserve information about all nodes, it also retains observations where the sending
node is the same as the receiving node, if the sending node has no other outgoing links. In this
way there will be at least one observation retained per sending node. From the compact format
it is easy to convert the network back into adjacency matrix format and keep any attributes
variables for each node that may exist in the data. 

{phang}
{opt noz:eros} Produces an edgelist which takes up the least amount of memory. It only keeps the
links that have non-zero and non-missing values. Any information about attributes of nodes
with no outgoing links will be lost.

{phang}
{opt keepto:nodes} Is similar to the compact format, but in addition to keeping at least one
observation per sending node, it also keeps at least one observation per receiving node. This
can be useful when variables describing the receiving nodes are included in the edgelist, see
the option {cmd:tovars(varlist)} above.

{phang}
{opt keepe:go} Includes all observations where the sending node is the same as the receiving node,
in addition to the pairs of nodes that are directly linked to one another. These observations
correspond to the cells in the diagonal of the adjacency matrix. This may be convenient
because it is easy to access information about the nodes with the if-statement if fromid ==
toid.

{phang}
{opt f:ull} Produces an edgelist with all dyads.

{title:Remarks}

{pstd}
None. 


{title:Examples}
To be written.

{title:Also see}